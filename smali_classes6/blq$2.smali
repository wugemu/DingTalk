.class final Lblq$2;
.super Ljava/lang/Object;
.source "AlphaHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmi;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lblq;


# direct methods
.method constructor <init>(Lblq;Lbmi;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lblq;

    .prologue
    .line 185
    iput-object p1, p0, Lblq$2;->c:Lblq;

    iput-object p2, p0, Lblq$2;->a:Lbmi;

    iput-object p3, p0, Lblq$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 188
    iget-object v0, p0, Lblq$2;->a:Lbmi;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lblq$2;->a:Lbmi;

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_FAIL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    iget-object v2, p0, Lblq$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbmi;->a(ILjava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method
