.class public final Lfdw;
.super Lfds;
.source "CirclePostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdw$b;,
        Lfdw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfds",
        "<",
        "Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;

    invoke-direct {p0, v0}, Lfds;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lfdw;-><init>()V

    return-void
.end method

.method public static a()Lfdw;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lfdw$a;->a()Lfdw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "tb_connection_post_data"

    return-object v0
.end method

.method protected final synthetic d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1044
    new-instance v0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;-><init>()V

    .line 11
    return-object v0
.end method
