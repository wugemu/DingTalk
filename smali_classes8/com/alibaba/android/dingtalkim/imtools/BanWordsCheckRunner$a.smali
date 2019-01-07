.class public final Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
.super Ljava/lang/Object;
.source "BanWordsCheckRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

.field public b:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;J)V
    .locals 0
    .param p1, "banMode"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;
    .param p2, "banLeftTime"    # J

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    .line 303
    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->b:J

    .line 304
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->NOT_BANNED:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
