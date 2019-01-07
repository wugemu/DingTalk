.class final Ldlx$2;
.super Lhae;
.source "PopupGalleryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlx$a;

.field final synthetic b:Ldlx;


# direct methods
.method constructor <init>(Ldlx;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;Ldlx$a;)V
    .locals 0
    .param p1, "this$0"    # Ldlx;
    .param p2, "x0"    # Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .prologue
    .line 169
    iput-object p1, p0, Ldlx$2;->b:Ldlx;

    iput-object p3, p0, Ldlx$2;->a:Ldlx$a;

    invoke-direct {p0, p2}, Lhae;-><init>(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    return-void
.end method


# virtual methods
.method public final exec(Lhac;)V
    .locals 7
    .param p1, "compressEvent"    # Lhac;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 172
    if-eqz p1, :cond_0

    .line 1035
    iget-object v2, p1, Lhac;->a:Lhag;

    .line 1043
    .local v2, "object":Lhag;
    iget-object v3, p1, Lhac;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 176
    .local v3, "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    move-object v1, p0

    .line 178
    .local v1, "finalEventListener":Lhae;
    if-eqz v2, :cond_0

    iget-object v4, p0, Ldlx$2;->a:Ldlx$a;

    iget-object v4, v4, Ldlx$a;->c:Ljava/lang/String;

    .line 1071
    iget-object v5, v2, Lhag;->b:Ljava/lang/String;

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    sget-object v4, Ldlx$5;->a:[I

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 201
    .end local v1    # "finalEventListener":Lhae;
    .end local v2    # "object":Lhag;
    .end local v3    # "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    :cond_0
    :goto_0
    return-void

    .line 1083
    .restart local v1    # "finalEventListener":Lhae;
    .restart local v2    # "object":Lhag;
    .restart local v3    # "type":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    :pswitch_0
    iget-object v0, v2, Lhag;->c:Ljava/lang/String;

    .line 182
    .local v0, "compressUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    iget-object v4, p0, Ldlx$2;->a:Ldlx$a;

    iput-object v0, v4, Ldlx$a;->c:Ljava/lang/String;

    .line 184
    iget-object v4, p0, Ldlx$2;->a:Ldlx$a;

    const/4 v5, 0x1

    iput v5, v4, Ldlx$a;->b:I

    .line 185
    iget-object v4, p0, Ldlx$2;->b:Ldlx;

    iget-object v5, p0, Ldlx$2;->a:Ldlx$a;

    invoke-static {v4, v5}, Ldlx;->d(Ldlx;Ldlx$a;)V

    .line 190
    :goto_1
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v4

    invoke-virtual {v4, v1}, Lhad;->b(Lhae;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v4, p0, Ldlx$2;->a:Ldlx$a;

    iput v6, v4, Ldlx$a;->b:I

    .line 188
    iget-object v4, p0, Ldlx$2;->b:Ldlx;

    iget-object v5, p0, Ldlx$2;->a:Ldlx$a;

    invoke-static {v4, v5}, Ldlx;->d(Ldlx;Ldlx$a;)V

    goto :goto_1

    .line 194
    .end local v0    # "compressUrl":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Ldlx$2;->a:Ldlx$a;

    iput v6, v4, Ldlx$a;->b:I

    .line 195
    iget-object v4, p0, Ldlx$2;->b:Ldlx;

    iget-object v5, p0, Ldlx$2;->a:Ldlx$a;

    invoke-static {v4, v5}, Ldlx;->d(Ldlx;Ldlx$a;)V

    .line 196
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v4

    invoke-virtual {v4, v1}, Lhad;->b(Lhae;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
