.class public final Lddw;
.super Ljava/lang/Object;
.source "BotInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lddw$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Ljava/lang/String;
    .locals 1
    .param p0, "botModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgName:Ljava/lang/String;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
