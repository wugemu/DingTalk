.class public Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
.super Ljava/lang/Object;
.source "IndustryObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837d7L


# instance fields
.field public code:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModelStrict(Lcdz;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 3
    .param p0, "industryEntryModel"    # Lcdz;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;-><init>()V

    .line 57
    .local v0, "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    iget-object v1, p0, Lcdz;->a:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 57
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    .line 58
    iget-object v1, p0, Lcdz;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcdz;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public fromIdlModel(Lcdz;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 2
    .param p1, "industryEntryModel"    # Lcdz;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p1, Lcdz;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 43
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    .line 44
    iget-object v0, p1, Lcdz;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcdz;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    .line 47
    :cond_0
    return-object p0
.end method
