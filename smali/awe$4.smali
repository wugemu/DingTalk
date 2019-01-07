.class final Lawe$4;
.super Ljava/lang/Object;
.source "PopupDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lawe$4;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {v0}, Lavw;->j(Z)V

    .line 183
    iget-object v0, p0, Lawe$4;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 1071
    iget-object v0, v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavr;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 184
    return-void
.end method
