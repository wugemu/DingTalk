.class final Lcmq$5;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmq$a;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcmq;


# direct methods
.method constructor <init>(Lcmq;Lcmq$a;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcmq;

    .prologue
    .line 424
    iput-object p1, p0, Lcmq$5;->e:Lcmq;

    iput-object p2, p0, Lcmq$5;->a:Lcmq$a;

    iput-wide p3, p0, Lcmq$5;->b:J

    iput-object p5, p0, Lcmq$5;->c:Ljava/lang/String;

    iput-object p6, p0, Lcmq$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method
