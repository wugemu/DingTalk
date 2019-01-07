.class final Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$2;
.super Ljava/lang/Object;
.source "CirclePostObject.java"

# interfaces
.implements Lcou;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 311
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$2;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdt;->b(Ljava/util/Collection;)I

    .line 312
    return-void
.end method
