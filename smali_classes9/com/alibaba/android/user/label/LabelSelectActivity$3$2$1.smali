.class final Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;
.super Ljava/lang/Object;
.source "LabelSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

.field final synthetic b:Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;->b:Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;

    iput-object p2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 353
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2$1;->b:Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;

    iget-object v1, v1, Lcom/alibaba/android/user/label/LabelSelectActivity$3$2;->a:Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/label/LabelSelectActivity$3;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/label/LabelSelectActivity;->f(Lcom/alibaba/android/user/label/LabelSelectActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfnn;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 1052
    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 356
    return-void
.end method
