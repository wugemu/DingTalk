.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$8;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Landroid/view/View;)V
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
    .line 214
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$8;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$8;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->b(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    .line 218
    return-void
.end method
