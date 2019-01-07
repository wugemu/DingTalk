.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Organization;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organization"
.end annotation


# static fields
.field public static final FLAG_WORK:I = 0x5

.field public static final TYPE_COMPANY:Ljava/lang/String; = "companyName"

.field public static final TYPE_DEPARTMENT:Ljava/lang/String; = "department"

.field public static final TYPE_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 95
    packed-switch p0, :pswitch_data_0

    .line 103
    const-string/jumbo v0, "companyName"

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    const-string/jumbo v0, "department"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string/jumbo v0, "companyName"

    goto :goto_0

    .line 101
    :pswitch_2
    const-string/jumbo v0, "title"

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
