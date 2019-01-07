.class public final Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;
.super Ljava/lang/Object;
.source "ContactSearchResultModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;->LocalContact:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->e:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 78
    return-void
.end method
