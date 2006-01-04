///////////////////////////////////////////////////////////////////////////////
// Name:		wxFlatNotebook.h
// Purpose:     generic declaration of flat style notebook class.
// Author:      Eran Ifrah <admin@eistware.com>
// Modified by: Priyank Bolia <soft@priyank.in>
// URL:			http://www.eistware.com/ and http://www.priyank.in
// Created:     30/12/2005
// Modified:    01/01/2006
// Copyright:   All contributors.
// Licence:     wxWindows license <http://www.wxwidgets.org/licence3.txt>
///////////////////////////////////////////////////////////////////////////////

#ifndef WXFLATNOTEBOOK_H
#define WXFLATNOTEBOOK_H

#include <wx/wx.h>

#ifdef __VISUALC__
#pragma warning( push )
#pragma warning(disable: 4702)
#endif

#include <vector>


#ifdef __VISUALC__
#pragma warning(pop)
#endif

#include <wx/dcbuffer.h>
#include <wx/dataobj.h>
#include <wx/dnd.h>
#include "TextDropTarget.h"
class wxPageContainer;

#ifndef M_PI
#define M_PI 3.14159265358979
#endif

typedef std::vector<wxBitmap> wxFlatNotebookImageList;


///  wxFlatNotebook styles
#define wxFNB_DEFAULT_STYLE				wxFNB_MOUSE_MIDDLE_CLOSES_TABS | wxFNB_BORDER //| wxFNB_TOP

/// Use Visual Studio 2003 (VC7.1) Style for tabs
#define wxFNB_VC71						1

/// Use fancy style - square tabs filled with gradient coloring
#define wxFNB_FANCY_TABS				2

/// Draw thin border around the page
#define wxFNB_BORDER					4

/// Do not display the 'X' button
#define wxFNB_NO_X_BUTTON				8

/// Do not display the Right / Left arrows
#define wxFNB_NO_NAV_BUTTONS			16

/// Use the mouse middle button for cloing tabs
#define wxFNB_MOUSE_MIDDLE_CLOSES_TABS	32

/// Place tabs at bottom - the default is to place them
/// at top
#define wxFNB_BOTTOM					64

class wxMenu;

/**
* \brief Nice cross-platform flat notebook with X-button :)
*/

class wxFlatNotebook : public wxPanel
{
private:
	friend class wxPageContainer;

public:

	///Default constructor
	wxFlatNotebook(){}
	/// Parametrized constructor
	/**
	\param parent - parent window
	\param id - window ID
	\param pos - window position
	\param size - window size
	\param style - window style
	\param name - window class name
	*/
	wxFlatNotebook(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = 0, const wxString& name = wxT("Flat Notebook"));

	/// Destructor
	~wxFlatNotebook(void);
	/// Advances the selection
	/**
	\param bForward - if set to true then selection should be advanced forward otherwise - backward
	*/
	void AdvanceSelection(bool bForward);
	/// Apends new notebook page
	/**
	\param windows - window to be appended
	\param caption - tab caption
	\param selected - determines if new page should be selected automatically
	\param imgindex - page image index
	*/
	void AddPage(wxWindow* windows, const wxString& caption, const bool selected = false, const int imgindex = -1);
	/// Inserts new notebook page
	/**
	\param index - page index
	\param page - window to be appended
	\param text - tab caption
	\param select - determines if new page should be selected automatically
	\param imgindex - page image index
	*/
	bool InsertPage(size_t index, wxWindow* page, const wxString& text, bool select = false, const int imgindex = -1);
	/// Changes the selection from currently visible/selected page to the page given by index.
	/**
	\param page - index of page to be selected
	*/
	void SetSelection(size_t page);
	/// Removes the window from the notebook, and destroys the window associated with that notebook page.
	/**
	\param page - index of page to be deleted
	*/
	void DeletePage(size_t page, bool notify = true);

	/// Deletes all notebook pages and destroys all windows associated with pages
	bool DeleteAllPages();

	/// Returns the total number of pages in the notebook.
	int  GetPageCount() const;

	/// Returns the window object associated with selected notebook page.
	wxWindow * GetCurrentPage() const;

	/// Returns the window object associated with a notebook page.
	/**
	\param page - page index
	*/
	wxWindow * GetPage(size_t page) const;

	/// Returns the currently visible/selected notebook page 0 based index.
	int GetSelection() const;
	/// Returns tab header inclination angle of specified page
	/**
	\param page_index - page index
	\param result - pointer to the variable that receives the result
	*/
	bool GetPageShapeAngle(int page_index, unsigned int * result);
	/// Sets tab header inclination angle of specified page
	/**
	\param page_index - page index
	\param angle - new value of tab header inclination angle
	*/
	void SetPageShapeAngle(int page_index, unsigned int angle);
	/// Sets tab header inclination angle for all pages
	/**
	\param angle - new value of tab header inclination angle
	*/
	void SetAllPagesShapeAngle(unsigned int angle);

	/// Returns the best size for a page
	wxSize GetPageBestSize();

	/// Sets the caption/text of the notebook page
	/**
	\param page - page index
	\param text - new value of tab caption
	*/
	bool SetPageText(size_t page, const wxString& text);

	/// Removes the window from the notebook, but does not delete the associated window with that notebook page.
	/**
	\param page - page index to be removed
	*/
	bool RemovePage(size_t page, bool notify = true);

	/// Sets the amount of space around each page's icon and label, in pixels.
	/**
	NB: The vertical padding cannot be changed in for wxFlatNotebook.
	\param padding - new amount of space around each page's icon and label
	*/
	void SetPadding(const wxSize& padding);
	/// Alters the notebook style
	/**
	\param style - new value of notebook style
	*/
	void SetBookStyle(long style);

	/// Query the current book style
	/**
	\param None
	*/
	long GetBookStyle();

	/// Returns the page text
	/**
	\param page - page index
	*/
	wxString GetPageText(size_t page);
	/// Sets an image index of specified page
	/**
	\param page - page index
	\param imgindex - new image index
	*/
	void SetPageImageIndex(size_t page, int imgindex);
	/// Returns an image index of specified page
	/**
	\param page - page index
	*/
	int GetPageImageIndex(size_t page);
	/// Sets gradient colors (only applicable when using the wxFNB_FANCY_TABS)
	/**
	\param from - first gradient colour
	\param to - second gradient colour
	\param border - page border colour
	*/
	void SetGradientColors(const wxColour& from, const wxColour& to, const wxColour& border);
	/// Sets first gradient colour
	/**
	\param from - new value of first gradient colour
	*/
	void SetGradientColorFrom(const wxColour& from);
	/// Sets second gradient colour
	/**
	\param to - new value of second gradient colour
	*/
	void SetGradientColorTo(const wxColour& to);
	/// Sets the colour of page border
	/**
	\param border - new value of the colour of page border
	*/
	void SetGradientColorBorder(const wxColour& border);
	/// Sets an image list associated with notebook pages
	/**
	\param imglist - image list object.
	Image list assigned with this method will not be deleted by wxFlatNotebook's destructor, you must delete it yourself.
	*/
	void SetImageList(wxFlatNotebookImageList * imglist);

	/// Returns an image list object associated with wxFlatNotebook
	wxFlatNotebookImageList * GetImageList();
private:
	wxBoxSizer* m_mainSizer;
	wxPageContainer *m_pages;
	/// vector of all the windows associated with the notebook pages.
	std::vector<wxWindow*> m_windows;
	int m_nFrom;
	int m_nPadding;

	DECLARE_DYNAMIC_CLASS(wxFlatNotebook)
	DECLARE_EVENT_TABLE()
	void OnNavigationKey(wxNavigationKeyEvent& event);
	void OnPaint(wxPaintEvent& WXUNUSED(event));
	void OnEraseBackground(wxEraseEvent& WXUNUSED(event)) { }
	void OnSize(wxSizeEvent& event);
};

/**
* \brief Contains parameters of notebook page
*/
class wxPageInfo
{
public:
	// Members
	/// Page caption
	wxString m_strCaption;
	/// Page position
	wxPoint m_pos;
	/// Page size
	wxSize  m_size;
	/// Angle for painting tab
	unsigned int m_TabAngle;
	/// Page image index
	int m_ImageIndex;
public:

	/// Default constructor
	wxPageInfo(): m_strCaption(wxEmptyString), m_TabAngle(0), m_ImageIndex(-1){};
	/// Parametrized constructor
	/**
	\param caption - page caption
	\param imgindex - image index
	*/
	wxPageInfo(const wxString& caption, int imgindex) :
	m_strCaption(caption), m_pos(-1, -1), m_size(-1, -1), m_TabAngle(0), m_ImageIndex(imgindex){}
	/// Destructor
	~wxPageInfo(){};

	/// Sets page caption
	/**
	\param value - new page caption
	*/
	void SetCaption(wxString value) {m_strCaption = value;}

	///Returns page caption
	wxString GetCaption() {return m_strCaption;}

	/// Sets page position
	/**
	\param value - new page position
	*/
	void SetPosition(wxPoint value) {m_pos = value;}

	///Returns page position
	const wxPoint & GetPosition() {return m_pos;}

	/// Sets page size
	/**
	\param value - new page size
	*/
	void SetSize(wxSize value) {m_size = value;}

	///Returns page size
	const wxSize & GetSize() {return m_size;}

	/// Sets the tab header inclination angle
	/**
	\param value - new tab header inclination angle
	*/
	void SetTabAngle(unsigned int value) {m_TabAngle = std::min((unsigned int)(45), (unsigned int)(value));}

	/// Returns an inclination of tab header borders
	unsigned int GetTabAngle() {return m_TabAngle;}
	/// Sets page image index
	/**
	\param value - new image index
	*/
	void SetImageIndex(int value) {m_ImageIndex = value;}

	/// Returns an image index
	int GetImageIndex() {return m_ImageIndex;}
};

/// Hit Test results
enum
{
	wxFNB_TAB,			/// On a tab
	wxFNB_X,			/// On the X button
	wxFNB_LEFT_ARROW,	/// On the rotate left arrow button
	wxFNB_RIGHT_ARROW,	/// On the rotate right arrow button
	wxFNB_NOWHERE		/// Anywhere else
};

/**
* \brief Notebook page
*/
class wxPageContainer : public wxControl
{
	friend class wxFlatNotebook;
	wxFlatNotebookImageList * m_ImageList;

public:
	/// Parametrized constructor
	/**
	\param parent - parent window
	\param id - window ID
	\param pos - window position
	\param size - window size
	\param style - window style
	*/
	wxPageContainer(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = 0);
	/// Destructor
	virtual ~wxPageContainer(void);

	/// Sets an image list associated with notebook pages
	/**
	\param imglist - image list object.
	Image list assigned with this method will not be deleted by wxFlatNotebook's destructor, you must delete it yourself.
	*/
	void SetImageList(wxFlatNotebookImageList * imglist) {m_ImageList = imglist;}

	/// Returns an image list object associated with wxFlatNotebook
	wxFlatNotebookImageList * GetImageList() {return m_ImageList;}

	/// Apends new notebook page
	/**
	\param caption - tab caption
	\param selected - determines if new page should be selected automatically
	\param imgindex - page image index
	*/
	void AddPage(const wxString& caption, const bool selected = false, const int imgindex = -1);

	/// Inserts new notebook page
	/**
	\param index - page index
	\param page - window to be appended
	\param text - tab caption
	\param select - determines if new page should be selected automatically
	\param imgindex - page image index
	*/
	bool InsertPage(size_t index, wxWindow* page, const wxString& text, bool select = false, const int imgindex = -1);

	/// Changes the selection from currently visible/selected page to the page given by index.
	/**
	\param page - index of page to be selected
	*/
	void SetSelection(size_t page);

	/// Returns the current selection page index
	int GetSelection() { return m_iActivePage; }

	/// Advances the selection
	/**
	\param bForward - if set to true then selection should be advanced forward otherwise - backward
	*/
	void AdvanceSelection(bool bForward);

	/// Return the number of pages
	size_t GetPageCount() { return m_pagesInfoVec.size(); }

	/// Returns the page caption
	/**
	\param page - page index
	*/
	wxString GetPageText(size_t page) { return m_pagesInfoVec[page].GetCaption(); }

	/// Set the caption of the page
	/**
	\param page - page index
	\param text - new page caption
	*/
	bool SetPageText(size_t page, const wxString& text) { m_pagesInfoVec[page].SetCaption(text); return true; }

	/// Sets an image index of specified page
	/**
	\param page - page index
	\param imgindex - new image index
	*/
	void SetPageImageIndex(size_t page, int imgindex);
	/// Returns an image index of specified page
	/**
	\param page - page index
	*/
	int GetPageImageIndex(size_t page);

	DECLARE_EVENT_TABLE()
	// Event handlers
	void OnPaint(wxPaintEvent& event);
	void OnSize(wxSizeEvent& WXUNUSED(event));
	void OnMouseMove(wxMouseEvent& event);
	void OnLeftDown(wxMouseEvent& event);
	void OnRightDown(wxMouseEvent& event);
	void OnMiddleDown(wxMouseEvent& event);
	void OnEraseBackground(wxEraseEvent& WXUNUSED(event)) { }
	void OnMouseLeave(wxMouseEvent& event);

protected:
	/// File a tab with gradient color
	void FillGradientColor(wxBufferedDC& dc, const wxRect& rect);

	/// Return true if page is visible
	bool IsTabVisible(size_t page);

	/// Return if pt is anywhere on a tab, button or anywhere else
	int HitTest(const wxPoint& pt, wxPageInfo& pageInfo, int &tabIdx);

	/// Display tool tip when mouse is hovering a tab
	virtual void ShowTabTooltip(int tabIdx);

	/// A wrapper from calling the DoDeletePage()
	void DeletePage(size_t page, bool notify = true);

	/// Remove all pages from the container (it also deletes them)
	void DeleteAllPages();

	/// Perform the actual deletion of a tab from the container
	/// The window is also deleted using this function
	void DoDeletePage(size_t page);

	/// Preform the actual page selection
	void DoSetSelection(size_t page);

	/// Draw right arrow button to the right area of the tabs
	void DrawRightArrow(bool hover, wxDC &dc);

	/// Draw left arrow button to the right area of the tabs
	void DrawLeftArrow (bool hover, wxDC &dc);

	/// Draw 'x' button to the right area of the tabs
	void DrawX         (bool hover, wxDC &dc);

	/// Return the index of the last visible index
	int  GetLastVisibleTab();

	/// Return the number of tabs that can be scrolled left
	/// starting from the first visible tab (i.e. m_nFrom)
	int  GetNumTabsCanScrollLeft();

	/**
	* \brief Drop event handler, to be passed as function pointer to CTextDropTarget class.
	* \param x X coordinate where the drop take place
	* \param y Y coordinate where the drop take place
	* \param data Dropped text
	* \return Boolean values indicating the drop was successful or not
	*/
	bool OnTextDropTarget(wxCoord x, wxCoord y, const wxString& data);

	/**
	* \brief Moves the tab page from one location to another
	* \param nMove The index of the tab page to be moved.
	* \param nMoveTo The index for the tab page, where it has to be moved
	*/
	void MoveTabPage(int nMove, int nMoveTo);

private:
	std::vector<wxPageInfo> m_pagesInfoVec;
	int m_iActivePage;
	int m_nFrom;
	wxRect x_rect;
	bool m_bHoverX, m_bHoverLeftArrow, m_bHoverRightArrow;

	/// Drop target for enabling drag'n'drop of tabs
	CTextDropTarget<wxPageContainer> *m_pDropTarget;

	/// Tabs style
	unsigned long m_nStyle;

	/// Pointer to the parent window
	wxWindow *m_pParent;

	/// Gradient colors
	wxColour m_colorFrom, m_colorTo, m_colorBorder;
};

/**
* \brief Holds information about events associated with wxFlatNotebook objects
*/
class wxFlatNotebookEvent : public wxNotifyEvent
{
	DECLARE_DYNAMIC_CLASS(wxFlatNotebookEvent)
	size_t sel, oldsel;

public:
	/// Constructor
	/**
	\param commandType - event type
	\param winid - window ID
	\param nSel - current selection
	\param nOldSel - old selection
	*/
	wxFlatNotebookEvent(wxEventType commandType = wxEVT_NULL, int winid = 0, int nSel = -1, int nOldSel = -1)
		: wxNotifyEvent(commandType, winid), sel(nSel), oldsel(nOldSel)
	{}
	/// Sets the value of current selection
	/**
	\param s - index of currently selected page
	*/
	void SetSelection(int s) { sel = s; }
	/// Sets the value of previous selection
	/**
	\param s - index of previously selected page
	*/
	void SetOldSelection(int s) { oldsel = s; }
	/// Returns the index of currently selected page
	int  GetSelection() { return (int)sel; }
	/// Returns the index of previously selected page
	int  GetOldSelection() { return (int)oldsel; }
};

#define wxFN_IMPEXP

BEGIN_DECLARE_EVENT_TYPES()
    DECLARE_EXPORTED_EVENT_TYPE(wxFN_IMPEXP, wxEVT_COMMAND_FLATNOTEBOOK_PAGE_CHANGED, 50000)
    DECLARE_EXPORTED_EVENT_TYPE(wxFN_IMPEXP, wxEVT_COMMAND_FLATNOTEBOOK_PAGE_CHANGING, 50001)
    DECLARE_EXPORTED_EVENT_TYPE(wxFN_IMPEXP, wxEVT_COMMAND_FLATNOTEBOOK_PAGE_CLOSING, 50002)
    DECLARE_EXPORTED_EVENT_TYPE(wxFN_IMPEXP, wxEVT_COMMAND_FLATNOTEBOOK_CONTEXT_MENU, 50003)
END_DECLARE_EVENT_TYPES()

typedef void (wxEvtHandler::*wxFlatNotebookEventFunction)(wxFlatNotebookEvent&);

#define wxFlatNotebookEventHandler(func) \
	(wxObjectEventFunction)(wxEventFunction)wxStaticCastEvent(wxFlatNotebookEventFunction, &func)

#define EVT_FLATNOTEBOOK_PAGE_CHANGED(winid, fn) \
	wx__DECLARE_EVT1(wxEVT_COMMAND_FLATNOTEBOOK_PAGE_CHANGED, winid, wxFlatNotebookEventHandler(fn))

#define EVT_FLATNOTEBOOK_PAGE_CHANGING(winid, fn) \
	wx__DECLARE_EVT1(wxEVT_COMMAND_FLATNOTEBOOK_PAGE_CHANGING, winid, wxFlatNotebookEventHandler(fn))

#define EVT_FLATNOTEBOOK_PAGE_CLOSING(winid, fn) \
	wx__DECLARE_EVT1(wxEVT_COMMAND_FLATNOTEBOOK_PAGE_CLOSING, winid, wxFlatNotebookEventHandler(fn))

#define EVT_FLATNOTEBOOK_CONTEXT_MENU(winid, fn) \
	wx__DECLARE_EVT1(wxEVT_COMMAND_FLATNOTEBOOK_CONTEXT_MENU, winid, wxFlatNotebookEventHandler(fn))

#endif // WXFLATNOTEBOOK_H
