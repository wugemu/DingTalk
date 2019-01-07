.class public Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;
.super Ljava/lang/Object;
.source "CircleUserSettingObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3bab1fa779b5bbffL


# instance fields
.field public albumCovers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfer;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;
    .locals 2
    .param p0, "model"    # Lfer;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;-><init>()V

    .line 26
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;
    iget-object v1, p0, Lfer;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;->albumCovers:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lfer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 31
    new-instance v0, Lfer;

    invoke-direct {v0}, Lfer;-><init>()V

    .line 32
    .local v0, "model":Lfer;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserSettingObject;->albumCovers:Ljava/util/List;

    iput-object v1, v0, Lfer;->a:Ljava/util/List;

    .line 33
    return-object v0
.end method
