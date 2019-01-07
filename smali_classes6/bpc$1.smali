.class final Lbpc$1;
.super Ljava/lang/Object;
.source "CircleCommentDraftDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpc;->a(Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lbox;

.field final synthetic c:Lbpc;


# direct methods
.method constructor <init>(Lbpc;[Ljava/lang/String;Lbox;)V
    .locals 0
    .param p1, "this$0"    # Lbpc;

    .prologue
    .line 37
    iput-object p1, p0, Lbpc$1;->c:Lbpc;

    iput-object p2, p0, Lbpc$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lbpc$1;->b:Lbox;

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
    .line 40
    iget-object v0, p0, Lbpc$1;->c:Lbpc;

    sget-object v1, Lbpc$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lbpc$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbpc;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lbpc$1;->b:Lbox;

    iget-object v1, p0, Lbpc$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbox;->release(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
