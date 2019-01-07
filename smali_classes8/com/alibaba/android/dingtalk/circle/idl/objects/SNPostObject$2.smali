.class final Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$2;
.super Ljava/lang/Object;
.source "SNPostObject.java"

# interfaces
.implements Lcou;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V
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
    .line 261
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 265
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$2;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpb;->b(Ljava/util/Collection;)I

    .line 266
    return-void
.end method
