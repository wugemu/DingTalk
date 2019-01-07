.class public Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;
.super Ljava/lang/Object;
.source "ArtcVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/ArtcVideoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArtcVideoRect"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/taobao/artc/api/ArtcVideoLayout;

.field public uid:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/taobao/artc/api/ArtcVideoLayout;IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/api/ArtcVideoLayout;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "uid"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->this$0:Lcom/taobao/artc/api/ArtcVideoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->x:I

    .line 13
    iput p3, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->y:I

    .line 14
    iput p4, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->z:I

    .line 15
    iput p5, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->width:I

    .line 16
    iput p6, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->height:I

    .line 17
    iput-object p7, p0, Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;->uid:Ljava/lang/String;

    .line 18
    return-void
.end method
