.class public Lcom/taobao/taolive/TaoLive$DataDIR;
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
    name = "DataDIR"
.end annotation


# static fields
.field public static final DataDIR_Download:I = 0x2

.field public static final DataDIR_None:I = 0x0

.field public static final DataDIR_Upload:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/TaoLive;


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/TaoLive;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive$DataDIR;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
