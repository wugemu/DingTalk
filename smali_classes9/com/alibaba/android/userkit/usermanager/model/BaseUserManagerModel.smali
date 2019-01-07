.class public Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
.super Ljava/lang/Object;
.source "BaseUserManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    iput-object v0, p0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;->a:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    return-void
.end method
