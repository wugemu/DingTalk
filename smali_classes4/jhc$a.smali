.class final Ljhc$a;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Lcom/sina/weibo/sdk/exception/WeiboException;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 0
    .param p1, "error"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 162
    .local p0, "this":Ljhc$a;, "Ljhc$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Ljhc$a;->b:Lcom/sina/weibo/sdk/exception/WeiboException;

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Ljhc$a;, "Ljhc$a<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Ljhc$a;->a:Ljava/lang/Object;

    .line 159
    return-void
.end method
