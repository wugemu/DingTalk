.class final Lazw$3;
.super Ljava/lang/Object;
.source "DingCommentPresenter.java"

# interfaces
.implements Lbhm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazw;


# direct methods
.method constructor <init>(Lazw;)V
    .locals 0
    .param p1, "this$0"    # Lazw;

    .prologue
    .line 123
    iput-object p1, p0, Lazw$3;->a:Lazw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lazw$3;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lazw$3;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->a()V

    .line 136
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;JI)V
    .locals 6
    .param p2, "cursor"    # J
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    iget-object v0, p0, Lazw$3;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lazw$3;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    sget-object v5, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lazv$b;->a(Ljava/util/List;JILcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    .line 129
    :cond_0
    return-void
.end method
