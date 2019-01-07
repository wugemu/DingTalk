.class public final Lbpg;
.super Lbpa;
.source "CircleUploadPostDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Lbpg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lbpg$1;

    invoke-direct {v0}, Lbpg$1;-><init>()V

    sput-object v0, Lbpg;->a:Lcpq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lbpg;-><init>()V

    return-void
.end method

.method public static e()Lbpg;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbpg;->a:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpg;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "tb_circle_post_create_object_data"

    return-object v0
.end method

.method public final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1036
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadPostEntry;-><init>()V

    .line 12
    return-object v0
.end method
