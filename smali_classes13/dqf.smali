.class public Ldqf;
.super Ldqg;
.source "SinglePckCheckStep.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Ldqf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldqf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Ldqf;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ldqg;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ldqf;->b:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Ldqf;->b:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v3, p0, Ldqf;->b:Ljava/lang/String;

    .line 1070
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ldpt;->c(J)Ljava/util/List;

    move-result-object v4

    .line 1071
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 55
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    iget-object v3, p0, Ldqf;->b:Ljava/lang/String;

    .line 1083
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1085
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1086
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "traceEmotion"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "[SinglePckCheckStep]"

    aput-object v7, v6, v1

    const-string/jumbo v7, "check EmotionPackageUnzipPath is empty, pid:"

    aput-object v7, v6, v2

    aput-object v3, v6, v8

    .line 1087
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 59
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .line 60
    invoke-virtual {p0}, Ldqf;->b()V

    .line 64
    :goto_2
    return-void

    .line 1074
    .end local v0    # "result":Z
    :cond_1
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "traceEmotion"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "[SinglePckCheckStep]"

    aput-object v7, v6, v1

    const-string/jumbo v7, " check models empty, pid:"

    aput-object v7, v6, v2

    aput-object v3, v6, v8

    .line 1075
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1074
    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1076
    goto :goto_0

    .line 1090
    .restart local v0    # "result":Z
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1092
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "traceEmotion"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "[SinglePckCheckStep]"

    aput-object v7, v6, v1

    const-string/jumbo v7, "check fold not exist, pid:"

    aput-object v7, v6, v2

    aput-object v3, v6, v8

    .line 1093
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1094
    goto :goto_1

    .line 1096
    :cond_3
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1097
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1098
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "traceEmotion"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "[SinglePckCheckStep]"

    aput-object v7, v6, v1

    const-string/jumbo v7, "check thumbnailFolderPath is empty, pid"

    aput-object v7, v6, v2

    aput-object v3, v6, v8

    .line 1099
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1100
    goto :goto_1

    .line 1102
    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1104
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "traceEmotion"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "[SinglePckCheckStep]"

    aput-object v7, v6, v1

    const-string/jumbo v7, " check t fold not exist, pid:"

    aput-object v7, v6, v2

    aput-object v3, v6, v8

    .line 1105
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1106
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 1109
    goto/16 :goto_1

    .line 62
    :cond_6
    invoke-virtual {p0, v1}, Ldqf;->a(Z)V

    goto/16 :goto_2
.end method
