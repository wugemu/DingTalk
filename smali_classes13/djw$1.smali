.class final Ldjw$1;
.super Lcom/alibaba/wukong/im/MessageChangeListener;
.source "InitializeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjw;


# direct methods
.method constructor <init>(Ldjw;)V
    .locals 0
    .param p1, "this$0"    # Ldjw;

    .prologue
    .line 140
    iput-object p1, p0, Ldjw$1;->a:Ldjw;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/MessageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAtListClearChange(J)V
    .locals 3
    .param p1, "createAt"    # J

    .prologue
    .line 148
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldbu;->a(Z)V

    .line 149
    invoke-static {}, Ldbu;->a()Ldbu;

    invoke-static {p1, p2}, Ldbu;->a(J)V

    .line 150
    invoke-static {}, Ldbq;->a()Ldbq;

    move-result-object v0

    invoke-virtual {v0}, Ldbq;->b()V

    .line 151
    return-void
.end method

.method public final onAtVersionChange(J)V
    .locals 1
    .param p1, "version"    # J

    .prologue
    .line 143
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(J)V

    .line 144
    return-void
.end method
