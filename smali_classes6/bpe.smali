.class public final Lbpe;
.super Lbpa;
.source "CirclePostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpe$b;,
        Lbpe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lbpe;-><init>()V

    return-void
.end method

.method public static e()Lbpe;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lbpe$a;->a()Lbpe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "tb_circle_post_data"

    return-object v0
.end method

.method protected final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1044
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;-><init>()V

    .line 11
    return-object v0
.end method
