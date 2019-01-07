.class public final Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
.super Ljava/lang/Object;
.source "VoiceTranslateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field private h:J

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a:I

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    .line 42
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->h:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->i:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->i:Ljava/lang/Runnable;

    return-object v0
.end method
