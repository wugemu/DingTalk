.class public Lcom/alibaba/android/search/model/GroupChooseMultiModel;
.super Lcom/alibaba/android/search/model/GroupModel;
.source "GroupChooseMultiModel.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 2
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 16
    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/search/model/GroupModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;ZLcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 22
    return-void
.end method
