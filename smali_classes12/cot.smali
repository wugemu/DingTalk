.class public Lcot;
.super Ljava/lang/Object;
.source "HttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcot$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcot;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcot;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;Lcot$a;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcot$a;

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcot;->b(ILjava/lang/String;Lcot$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILcot$a;)V
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "reqUrl"    # Ljava/lang/String;
    .param p4, "uploadName"    # Ljava/lang/String;
    .param p5, "requestTimeout"    # I
    .param p6, "onFileUploadListener"    # Lcot$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcot$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "formData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string/jumbo v6, "video"

    const v9, 0xea60

    .line 1080
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    const-string/jumbo v1, "dingtalkbase"

    sget-object v2, Lcot;->a:Ljava/lang/String;

    const-string/jumbo v3, "filePath is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/16 v1, -0x65

    const-string/jumbo v2, "filePath is null"

    move-object/from16 v0, p6

    invoke-static {v1, v2, v0}, Lcot;->b(ILjava/lang/String;Lcot$a;)V

    .line 1098
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    const-string/jumbo v1, "dingtalkbase"

    sget-object v2, Lcot;->a:Ljava/lang/String;

    const-string/jumbo v3, "reqUrl is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const/16 v1, -0x65

    const-string/jumbo v2, "reqUrl is null"

    move-object/from16 v0, p6

    invoke-static {v1, v2, v0}, Lcot;->b(ILjava/lang/String;Lcot$a;)V

    goto :goto_0

    .line 1090
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1091
    const-string/jumbo v1, "dingtalkbase"

    sget-object v2, Lcot;->a:Ljava/lang/String;

    const-string/jumbo v3, "uploadType is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/16 v1, -0x65

    const-string/jumbo v2, "uploadType is null"

    move-object/from16 v0, p6

    invoke-static {v1, v2, v0}, Lcot;->b(ILjava/lang/String;Lcot$a;)V

    goto :goto_0

    .line 1095
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1096
    const-string/jumbo v1, "dingtalkbase"

    sget-object v2, Lcot;->a:Ljava/lang/String;

    const-string/jumbo v3, "uploadName is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const/16 v1, -0x65

    const-string/jumbo v2, "uploadName is null"

    move-object/from16 v0, p6

    invoke-static {v1, v2, v0}, Lcot;->b(ILjava/lang/String;Lcot$a;)V

    goto :goto_0

    .line 1100
    :cond_3
    sget-object v1, Lcot;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v10

    new-instance v1, Lcot$1;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p3

    move-object v5, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lcot$1;-><init>(Ljava/lang/String;Lcot$a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-interface {v10, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(ILjava/lang/String;Lcot$a;)V
    .locals 0
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "onFileUploadListener"    # Lcot$a;

    .prologue
    .line 223
    if-eqz p2, :cond_0

    .line 224
    invoke-interface {p2, p0, p1}, Lcot$a;->onError(ILjava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method
