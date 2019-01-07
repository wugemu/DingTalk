.class public Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
.super Ljava/lang/Object;
.source "EmotionObjectWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x272cef5497d23808L


# instance fields
.field private emotionAuthMediaId:Ljava/lang/String;

.field private emotionId:J

.field private emotionMediaId:Ljava/lang/String;

.field private emotionName:Ljava/lang/String;

.field private emotionPackageId:Ljava/lang/String;

.field private emotionType:I

.field private praiseTag:I

.field private praiseType:I

.field private praiseUrlPrefix:Ljava/lang/String;

.field private praiseUuid:Ljava/lang/String;

.field private thirdPartyEmotionId:Ljava/lang/String;

.field private thirdPartyEmotionUrl:Ljava/lang/String;

.field private thirdPartyHeight:I

.field private thirdPartyWidth:I

.field private thumbMediaId:Ljava/lang/String;

.field private topicId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;-><init>()V

    return-void
.end method

.method public static synthetic access$1002(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionPackageId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyHeight:I

    return p1
.end method

.method static synthetic access$1202(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseType:I

    return p1
.end method

.method static synthetic access$1402(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseUrlPrefix:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1502(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thumbMediaId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseTag:I

    return p1
.end method

.method static synthetic access$202(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # J

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionId:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionType:I

    return p1
.end method

.method static synthetic access$402(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionMediaId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionAuthMediaId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # J

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->topicId:J

    return-wide p1
.end method

.method public static synthetic access$702(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyEmotionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyEmotionUrl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getEmotionAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionAuthMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionId:J

    return-wide v0
.end method

.method public getEmotionMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->emotionType:I

    return v0
.end method

.method public getPraiseTag()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseTag:I

    return v0
.end method

.method public getPraiseType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseType:I

    return v0
.end method

.method public getPraiseUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPraiseUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->praiseUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyEmotionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyEmotionId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyEmotionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyEmotionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyHeight:I

    return v0
.end method

.method public getThirdPartyWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thirdPartyWidth:I

    return v0
.end method

.method public getThumbMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->thumbMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->topicId:J

    return-wide v0
.end method
