.class public final Lbpi;
.super Lbpa;
.source "CircleUploadTaskDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;",
        "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Lbpi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lbpi$1;

    invoke-direct {v0}, Lbpi$1;-><init>()V

    sput-object v0, Lbpi;->a:Lcpq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lbpi;-><init>()V

    return-void
.end method

.method public static e()Lbpi;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lbpi;->a:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpi;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "tb_circle_upload_data"

    return-object v0
.end method

.method public final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1035
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/upload/CircleUploadTaskEntry;-><init>()V

    .line 12
    return-object v0
.end method
