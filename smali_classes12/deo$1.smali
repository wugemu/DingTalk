.class public final Ldeo$1;
.super Lcmi;
.source "GroupThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ldtr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldeo;


# direct methods
.method public constructor <init>(Ldeo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldeo;

    .prologue
    .line 45
    iput-object p1, p0, Ldeo$1;->b:Ldeo;

    iput-object p2, p0, Ldeo$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v0, "GroupTheme"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getTheme err "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "12080"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "GroupTheme"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldeo$1$2;

    invoke-direct {v1, p0}, Ldeo$1$2;-><init>(Ldeo$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 69
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    check-cast p1, Ldtr;

    .line 1049
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->fromGroupThemeModel(Ldtr;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    move-result-object v0

    .line 1050
    const-string/jumbo v1, "GroupTheme"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldeo$1$1;

    invoke-direct {v2, p0, v0}, Ldeo$1$1;-><init>(Ldeo$1;Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
