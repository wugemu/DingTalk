.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Community;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Community"
.end annotation


# static fields
.field public static final FLAG_COMM:I = 0x7

.field public static final TYPE_KAIXIN:Ljava/lang/String; = "kaixin"

.field public static final TYPE_RENREN:Ljava/lang/String; = "renren"

.field public static final TYPE_TENGXUNWEIBO:Ljava/lang/String; = "tengxunweibo"

.field public static final TYPE_XINLANGWEIBO:Ljava/lang/String; = "xinlangweibo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 151
    const-string/jumbo v0, "xinlangweibo"

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    const-string/jumbo v0, "xinlangweibo"

    goto :goto_0

    .line 145
    :pswitch_1
    const-string/jumbo v0, "tengxunweibo"

    goto :goto_0

    .line 147
    :pswitch_2
    const-string/jumbo v0, "renren"

    goto :goto_0

    .line 149
    :pswitch_3
    const-string/jumbo v0, "kaixin"

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
