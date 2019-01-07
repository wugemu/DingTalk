.class final Lawe$7;
.super Ljava/lang/Object;
.source "PopupDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V
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
    .line 246
    iput-object p1, p0, Lawe$7;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

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
    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lavw;->h(Z)V

    .line 250
    iget-object v0, p0, Lawe$7;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 1071
    iget-object v0, v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavr;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 251
    return-void
.end method
