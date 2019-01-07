.class final Lawe$5;
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

.field final synthetic b:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lawe$5;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    iput-object p2, p0, Lawe$5;->b:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 193
    const/4 v1, 0x0

    invoke-static {v1}, Lavw;->k(Z)V

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lawe$5;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 1071
    iget-object v2, v2, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lawe$5;->b:Landroid/content/res/Resources;

    sget v3, Laow$f;->dt_calendar_on_going_journal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 198
    return-void
.end method
