.class public final Lhmx$a;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

.field final synthetic b:Lhmx;


# direct methods
.method public constructor <init>(Lhmx;)V
    .locals 0
    .param p1, "this$0"    # Lhmx;

    .prologue
    .line 7
    iput-object p1, p0, Lhmx$a;->b:Lhmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
