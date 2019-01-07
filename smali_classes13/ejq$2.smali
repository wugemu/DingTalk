.class public final Lejq$2;
.super Ljava/lang/Object;
.source "HomeBurnChatEnterManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejq;


# direct methods
.method public constructor <init>(Lejq;)V
    .locals 0
    .param p1, "this$0"    # Lejq;

    .prologue
    .line 127
    iput-object p1, p0, Lejq$2;->a:Lejq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lejq$2;->a:Lejq;

    .line 1043
    invoke-virtual {v0}, Lejq;->b()V

    .line 131
    iget-object v0, p0, Lejq$2;->a:Lejq;

    .line 2043
    iget v0, v0, Lejq;->b:I

    .line 131
    if-ltz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e()I

    move-result v0

    iget-object v1, p0, Lejq$2;->a:Lejq;

    .line 3043
    iget v1, v1, Lejq;->b:I

    .line 132
    if-le v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lejq$2;->a:Lejq;

    invoke-virtual {v0}, Lejq;->a()V

    .line 136
    :cond_0
    iget-object v0, p0, Lejq$2;->a:Lejq;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e()I

    move-result v1

    .line 4043
    iput v1, v0, Lejq;->b:I

    .line 137
    return-void
.end method
