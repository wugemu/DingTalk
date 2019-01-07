.class public final Lawb$3;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lawb$3;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

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
    .line 456
    const/4 v0, 0x1

    invoke-static {v0}, Lavw;->f(Z)V

    .line 457
    iget-object v0, p0, Lawb$3;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 1071
    iget-object v0, v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lawb$3;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 2071
    iget-object v0, v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 3026
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v1

    .line 458
    invoke-static {v0, v1}, Lavr;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 460
    :cond_0
    return-void
.end method
