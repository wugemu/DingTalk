.class public Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;
.super Ljava/lang/Object;
.source "BotProfileModelObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brief:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public dev:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public mobileSwitch:I

.field public name:Ljava/lang/String;

.field public previewMediaId:Ljava/lang/String;

.field public sourceURL:Ljava/lang/String;

.field public templateId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcf;)Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;
    .locals 4
    .param p0, "model"    # Ldcf;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;-><init>()V

    .line 33
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;
    iget-object v1, p0, Ldcf;->a:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->templateId:J

    .line 34
    iget-object v1, p0, Ldcf;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->name:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Ldcf;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->icon:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Ldcf;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->brief:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Ldcf;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->previewMediaId:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Ldcf;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->dev:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Ldcf;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->sourceURL:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Ldcf;->h:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->mobileSwitch:I

    .line 41
    iget-object v1, p0, Ldcf;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->desc:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Ldcf;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 40
    :cond_2
    iget-object v1, p0, Ldcf;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public canAddInMobile()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 50
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->mobileSwitch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateValid()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/base/model/BotProfileModelObject;->templateId:J

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isTemplateValid(J)Z

    move-result v0

    return v0
.end method
