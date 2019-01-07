.class public final Lhmy$a;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lhmy;


# direct methods
.method public constructor <init>(Lhmy;)V
    .locals 0
    .param p1, "this$0"    # Lhmy;

    .prologue
    .line 27
    iput-object p1, p0, Lhmy$a;->d:Lhmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
