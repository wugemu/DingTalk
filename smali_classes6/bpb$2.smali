.class final Lbpb$2;
.super Ljava/lang/Object;
.source "CircleCommentDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpb;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbpb;


# direct methods
.method constructor <init>(Lbpb;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbpb;

    .prologue
    .line 72
    iput-object p1, p0, Lbpb$2;->b:Lbpb;

    iput-object p2, p0, Lbpb$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lbpb$2;->b:Lbpb;

    iget-object v1, p0, Lbpb$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lbpb;->a(Lbpb;Ljava/util/List;)V

    .line 76
    return-void
.end method
