.class public final Ldcw;
.super Ljava/lang/Object;
.source "IMGrayUtil.java"


# static fields
.field static a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Ldcw;->a:Lfp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 24
    .local v0, "currentUid":J
    sget-object v4, Ldcw;->a:Lfp;

    .line 1096
    invoke-virtual {v4, v0, v1, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_ding_msg_to_ding_new_style"

    .line 2083
    invoke-virtual {v4, v5, v8}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 26
    .local v2, "msgToDingNewStyleFeatureOn":Z
    sget-object v4, Ldcw;->a:Lfp;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lfp;->b(JLjava/lang/Object;)V

    .line 27
    const-string/jumbo v4, "ding"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[DingGrayUtil] isMsgToDingNewStyle msgToDingNewStyleFeatureOn="

    aput-object v6, v5, v3

    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 29
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {v4, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v2    # "msgToDingNewStyleFeatureOn":Z
    :cond_0
    sget-object v4, Ldcw;->a:Lfp;

    .line 2096
    invoke-virtual {v4, v0, v1, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 33
    if-nez v4, :cond_1

    .line 37
    :goto_0
    return v3

    :cond_1
    sget-object v3, Ldcw;->a:Lfp;

    .line 3096
    invoke-virtual {v3, v0, v1, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method
