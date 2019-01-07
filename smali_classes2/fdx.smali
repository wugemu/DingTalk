.class public final Lfdx;
.super Lfds;
.source "CircleUsrPostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdx$b;,
        Lfdx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfds",
        "<",
        "Lcom/alibaba/android/user/connection/entry/CircleUsrPostDataEntry;",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/android/user/connection/entry/CircleUsrPostDataEntry;

    invoke-direct {p0, v0}, Lfds;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lfdx;-><init>()V

    return-void
.end method

.method public static a()Lfdx;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lfdx$a;->a()Lfdx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "tb_connection_usr_post_data"

    return-object v0
.end method

.method protected final synthetic d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1027
    new-instance v0, Lcom/alibaba/android/user/connection/entry/CircleUsrPostDataEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/entry/CircleUsrPostDataEntry;-><init>()V

    .line 10
    return-object v0
.end method
