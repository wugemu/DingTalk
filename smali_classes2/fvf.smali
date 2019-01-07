.class public final Lfvf;
.super Ljava/lang/Object;
.source "RobotDataAdapter.java"


# static fields
.field private static j:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

.field public h:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

.field private i:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lfvf;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lfvf;
    .locals 2
    .param p0, "botModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 109
    if-eqz p0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-static {v1}, Lfvf;->a(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)Lfvf;

    move-result-object v0

    .line 112
    .local v0, "robotDataAdapter":Lfvf;
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lfvf;

    .end local v0    # "robotDataAdapter":Lfvf;
    invoke-direct {v0}, Lfvf;-><init>()V

    .line 115
    .restart local v0    # "robotDataAdapter":Lfvf;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->a:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->b:Ljava/lang/String;

    .line 117
    const/4 v1, 0x1

    iput v1, v0, Lfvf;->f:I

    .line 118
    iput-object p0, v0, Lfvf;->i:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 121
    .end local v0    # "robotDataAdapter":Lfvf;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)Lfvf;
    .locals 2
    .param p0, "botTemplateModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Lfvf;

    invoke-direct {v0}, Lfvf;-><init>()V

    .line 49
    .local v0, "robotDataAdapter":Lfvf;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->a:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->icon:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->b:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->desc:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->c:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->previewMediaId:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->d:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->desc:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->c:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->sourceURL:Ljava/lang/String;

    iput-object v1, v0, Lfvf;->e:Ljava/lang/String;

    .line 55
    const/4 v1, 0x2

    iput v1, v0, Lfvf;->f:I

    .line 56
    iput-object p0, v0, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iput-object v1, v0, Lfvf;->h:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    .line 62
    .end local v0    # "robotDataAdapter":Lfvf;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    iget v0, p0, Lfvf;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->canAddInMobile()Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
