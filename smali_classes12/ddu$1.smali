.class final Lddu$1;
.super Ljava/lang/Object;
.source "BanWordsCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddu;


# direct methods
.method constructor <init>(Lddu;)V
    .locals 0
    .param p1, "this$0"    # Lddu;

    .prologue
    .line 63
    iput-object p1, p0, Lddu$1;->a:Lddu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 1
    .param p1, "bannedInfo"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .prologue
    .line 66
    iget-object v0, p0, Lddu$1;->a:Lddu;

    .line 1018
    iget-object v0, v0, Lddu;->d:Lddv$a;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lddu$1;->a:Lddu;

    .line 2018
    iget-object v0, v0, Lddu;->d:Lddv$a;

    .line 67
    invoke-interface {v0, p1}, Lddv$a;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    .line 69
    :cond_0
    return-void
.end method
