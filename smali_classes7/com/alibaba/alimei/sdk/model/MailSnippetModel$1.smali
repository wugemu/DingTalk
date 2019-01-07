.class final Lcom/alibaba/alimei/sdk/model/MailSnippetModel$1;
.super Ljava/lang/Object;
.source "MailSnippetModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    .line 2420
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;-><init>(Landroid/os/Parcel;)V

    .line 418
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    .line 1423
    new-array v0, p1, [Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 418
    return-object v0
.end method
