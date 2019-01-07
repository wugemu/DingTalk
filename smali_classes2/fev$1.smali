.class final Lfev$1;
.super Ljava/lang/Object;
.source "LoadPersonalModel.java"

# interfaces
.implements Lcou;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfev;


# direct methods
.method constructor <init>(Lfev;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfev;

    .prologue
    .line 69
    iput-object p1, p0, Lfev$1;->b:Lfev;

    iput-object p2, p0, Lfev$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 73
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v0

    iget-object v1, p0, Lfev$1;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdt;->b(Ljava/util/Collection;)I

    .line 74
    return-void
.end method
