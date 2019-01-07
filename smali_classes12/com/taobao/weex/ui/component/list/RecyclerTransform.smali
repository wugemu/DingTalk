.class public Lcom/taobao/weex/ui/component/list/RecyclerTransform;
.super Ljava/lang/Object;
.source "RecyclerTransform.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerTransform"

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field private static final transformPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->transformPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTransforms(ILjava/lang/String;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 13
    .param p0, "orientation"    # I
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const/4 v6, 0x0

    .local v6, "scaleX":F
    const/4 v7, 0x0

    .line 55
    .local v7, "scaleY":F
    const/4 v3, 0x0

    .local v3, "translateX":I
    const/4 v4, 0x0

    .line 56
    .local v4, "translateY":I
    const/4 v2, 0x0

    .line 57
    .local v2, "opacity":F
    const/4 v5, 0x0

    .line 59
    .local v5, "rotate":I
    sget-object v0, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->transformPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 60
    .local v10, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "match":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "name":Ljava/lang/String;
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 80
    const-string/jumbo v0, "RecyclerTransform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Invaild transform expression:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v8

    .line 84
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v0, ""

    invoke-static {v0, v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    const-string/jumbo v0, "RecyclerTransform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Invaild transform expression:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    :try_start_1
    const-string/jumbo v1, "scale"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "translate"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "opacity"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v1, "rotate"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    .line 66
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 67
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 68
    goto/16 :goto_1

    .line 70
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 71
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 72
    goto/16 :goto_1

    .line 74
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 75
    goto/16 :goto_1

    .line 77
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 78
    goto/16 :goto_1

    .line 88
    .end local v9    # "match":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;-><init>(ZFIIIFF)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 64
    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_2
        -0x372522a5 -> :sswitch_3
        0x683094a -> :sswitch_0
        0x3ec0f14e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
