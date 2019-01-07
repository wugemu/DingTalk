.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2193
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$19;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldyy$b;->a(Ljava/lang/String;)V

    .line 2194
    return-void
.end method
