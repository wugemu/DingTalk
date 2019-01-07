.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Email;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field public static final FLAG_MAIL:I = 0x1

.field public static final TYPE_BACKUP:Ljava/lang/String; = "backupEmail"

.field public static final TYPE_HOME:Ljava/lang/String; = "homeEmail"

.field public static final TYPE_WORK:Ljava/lang/String; = "workEmail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 22
    const-string/jumbo v0, "backupEmail"

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    const-string/jumbo v0, "workEmail"

    goto :goto_0

    .line 20
    :pswitch_1
    const-string/jumbo v0, "homeEmail"

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
