.class public final Lbph;
.super Lbpa;
.source "CircleUploadResponseDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;",
        "Lifx;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Lbph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lbph$1;

    invoke-direct {v0}, Lbph$1;-><init>()V

    sput-object v0, Lbph;->a:Lcpq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lbph;-><init>()V

    return-void
.end method

.method public static e()Lbph;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbph;->a:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbph;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "tb_circle_post_response_data"

    return-object v0
.end method

.method public final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1035
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadResponseEntry;-><init>()V

    .line 12
    return-object v0
.end method
