.class final Lfdu$1;
.super Ljava/lang/Object;
.source "CircleCommentDraftDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdu;->a(Lcom/alibaba/android/user/connection/draft/CommentDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lfdo;

.field final synthetic c:Lfdu;


# direct methods
.method constructor <init>(Lfdu;[Ljava/lang/String;Lfdo;)V
    .locals 0
    .param p1, "this$0"    # Lfdu;

    .prologue
    .line 45
    iput-object p1, p0, Lfdu$1;->c:Lfdu;

    iput-object p2, p0, Lfdu$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lfdu$1;->b:Lfdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lfdu$1;->c:Lfdu;

    sget-object v1, Lfdu$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lfdu$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfdu;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lfdu$1;->b:Lfdo;

    iget-object v1, p0, Lfdu$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfdo;->release(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
