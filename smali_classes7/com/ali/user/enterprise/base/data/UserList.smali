.class public Lcom/ali/user/enterprise/base/data/UserList;
.super Ljava/lang/Object;
.source "UserList.java"


# instance fields
.field public masterOuterSign:Ljava/lang/String;

.field public users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/enterprise/base/data/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
