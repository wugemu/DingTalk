.class public final Lhor;
.super Ljava/lang/Object;
.source "CalendarWidgetPresent.java"

# interfaces
.implements Lhoq$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhor$a;
    }
.end annotation


# instance fields
.field a:Lhfn;

.field b:Ljava/lang/String;

.field c:[I

.field private d:Lhor$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;[ILhoq$c;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "bizTypes"    # [I
    .param p3, "widgetMVPView"    # Lhoq$c;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lhfn;

    invoke-direct {v0}, Lhfn;-><init>()V

    iput-object v0, p0, Lhor;->a:Lhfn;

    .line 46
    iput-object p1, p0, Lhor;->b:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lhor;->c:[I

    .line 49
    if-eqz p3, :cond_0

    .line 50
    invoke-interface {p3, p0}, Lhoq$c;->a(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lhfn;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lhor;->a:Lhfn;

    return-object v0
.end method

.method public final a(Lckq;Lhoq$a;)V
    .locals 4
    .param p1, "calendarBean"    # Lckq;
    .param p2, "fragmentMVPView"    # Lhoq$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lhor;->c:[I

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lhor;->d:Lhor$a;

    if-eqz v0, :cond_2

    .line 64
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lhor;->d:Lhor$a;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    :cond_2
    new-instance v0, Lhor$a;

    invoke-direct {v0, p0, p1, p2}, Lhor$a;-><init>(Lhor;Lckq;Lhoq$a;)V

    iput-object v0, p0, Lhor;->d:Lhor$a;

    .line 68
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lhor;->d:Lhor$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
