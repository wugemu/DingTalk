.class public final Lfdt;
.super Lfds;
.source "CircleCommentDataSourceImpl.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdt$b;,
        Lfdt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfds",
        "<",
        "Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;",
        "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;

    invoke-direct {p0, v0}, Lfds;-><init>(Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lfdt;-><init>()V

    return-void
.end method

.method public static a()Lfdt;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lfdt$a;->a()Lfdt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "tb_connection_comment_data"

    return-object v0
.end method

.method protected final synthetic d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1085
    new-instance v0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;-><init>()V

    .line 18
    return-object v0
.end method
