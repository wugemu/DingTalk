.class Lcom/laiwang/protocol/android/h$a;
.super Ljava/lang/Object;
.source "SmartHeartBeatInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/net/NetworkInfo;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field final synthetic i:Lcom/laiwang/protocol/android/h;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/h;)V
    .locals 2
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/h;

    .prologue
    const/4 v1, 0x0

    .line 295
    iput-object p1, p0, Lcom/laiwang/protocol/android/h$a;->i:Lcom/laiwang/protocol/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput v1, p0, Lcom/laiwang/protocol/android/h$a;->d:I

    .line 300
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/h$a;->e:Z

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/laiwang/protocol/android/h$a;->f:I

    .line 302
    iput v1, p0, Lcom/laiwang/protocol/android/h$a;->g:I

    .line 303
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/h$a;->h:Z

    return-void
.end method
