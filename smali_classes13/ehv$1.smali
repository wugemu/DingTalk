.class public final Lehv$1;
.super Ljava/lang/Object;
.source "FocusConfigManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lehv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Legv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lehv;


# direct methods
.method public constructor <init>(Lehv;)V
    .locals 0
    .param p1, "this$0"    # Lehv;

    .prologue
    .line 58
    iput-object p1, p0, Lehv$1;->a:Lehv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    check-cast p1, Legv;

    .line 1061
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p1, Legv;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 1062
    :cond_0
    const-string/jumbo v0, "focus"

    invoke-static {}, Lehv;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pull config fail"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_1
    :goto_0
    return-void

    .line 1066
    :cond_2
    :try_start_0
    iget-object v0, p1, Legv;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p1, Legv;->c:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/projection/data/SvrConfigEnum;->PROJECTION_ENCODE_MODE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/data/SvrConfigEnum;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1068
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1069
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1070
    iget-object v2, p0, Lehv$1;->a:Lehv;

    iget-object v3, p0, Lehv$1;->a:Lehv;

    invoke-static {v3, v1}, Lehv;->a(Lehv;I)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    move-result-object v1

    invoke-static {v2, v1}, Lehv;->a(Lehv;Lali/mmpc/pwp/PwpClient$CODEC_TYPE;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 1072
    :cond_3
    iget-object v1, p0, Lehv$1;->a:Lehv;

    invoke-static {v1}, Lehv;->a(Lehv;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1073
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "prj_codec_type"

    iget-object v3, p0, Lehv$1;->a:Lehv;

    invoke-static {v3}, Lehv;->a(Lehv;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1075
    :cond_4
    const-string/jumbo v1, "focus"

    invoke-static {}, Lehv;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Codec type "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 1076
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    const-string/jumbo v0, "focus"

    invoke-static {}, Lehv;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Pull config fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 86
    return-void
.end method
