.class public Lcom/taobao/taolive/TaoLive$MediaType;
.super Ljava/lang/Object;
.source "TaoLive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/TaoLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaType"
.end annotation


# static fields
.field public static final MediaType_AV:I = 0x3

.field public static final MediaType_Audio:I = 0x1

.field public static final MediaType_None:I = 0x0

.field public static final MediaType_Video:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/TaoLive;


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/TaoLive;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive$MediaType;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
