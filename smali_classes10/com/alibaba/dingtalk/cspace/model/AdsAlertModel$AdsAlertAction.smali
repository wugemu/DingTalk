.class public Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;
.super Ljava/lang/Object;
.source "AdsAlertModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdsAlertAction"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x38e46f71b10f5df5L


# instance fields
.field public actionLink:Ljava/lang/String;

.field public actionText:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;->this$0:Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
