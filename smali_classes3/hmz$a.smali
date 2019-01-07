.class public final Lhmz$a;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[B

.field public c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lhmz;


# direct methods
.method public constructor <init>(Lhmz;)V
    .locals 0
    .param p1, "this$0"    # Lhmz;

    .prologue
    .line 36
    iput-object p1, p0, Lhmz$a;->d:Lhmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
