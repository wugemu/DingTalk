.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lawn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->f(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Lawn;

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$13;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0, p2}, Lawn;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    .line 364
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
