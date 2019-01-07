.class public final Lbpf;
.super Lbpa;
.source "CircleUsrPostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpf$b;,
        Lbpf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/CircleUsrPostDataEntry;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleUsrPostDataEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lbpf;-><init>()V

    return-void
.end method

.method public static e()Lbpf;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lbpf$a;->a()Lbpf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "tb_circle_usr_post_data"

    return-object v0
.end method

.method protected final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1027
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleUsrPostDataEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/CircleUsrPostDataEntry;-><init>()V

    .line 10
    return-object v0
.end method
